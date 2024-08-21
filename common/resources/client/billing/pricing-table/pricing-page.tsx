import { PricingTable } from '@common/billing/pricing-table/pricing-table';
import { Fragment, useState } from 'react';
import { Link } from 'react-router-dom';
import { Trans } from '../../i18n/trans';
import { ForumIcon } from '../../icons/material/Forum';
import { StaticPageTitle } from '../../seo/static-page-title';
import { Button } from '../../ui/buttons/button';
import { Footer } from '../../ui/footer/footer';
import { Navbar } from '../../ui/navigation/navbar/navbar';
import { BillingCycleRadio } from './billing-cycle-radio';
import { UpsellBillingCycle } from './find-best-price';
import { useProducts } from './use-products';

export function PricingPage() {
  const query = useProducts('pricingPage');
  const [selectedCycle, setSelectedCycle] =
    useState<UpsellBillingCycle>('yearly');

  return (
    <Fragment>
      <StaticPageTitle>
        <Trans message="Pricing" />
      </StaticPageTitle>
      <Navbar
        color="bg"
        darkModeColor="transparent"
        border="border-b"
        menuPosition="pricing-table-page"
      />
      <div className="container mx-auto px-24">
        <h1 className="mb-30 mt-30 text-center text-3xl font-normal md:mt-60 md:text-4xl md:font-medium">
          <Trans message="Choose the right plan for you" />
        </h1>
        <BillingCycleRadio
          products={query.data?.products}
          selectedCycle={selectedCycle}
          onChange={setSelectedCycle}
          className="mb-40 md:mb-70"
          size="lg"
          style={{
            display: 'flex',
            flexDirection: window.innerWidth < 768 ? 'column' : 'row',
            justifyContent: 'center',  // Center items horizontally
            alignItems: 'center',      // Center items vertically
            gap: '20px',               // Add gap between items
            width: '100%',
          }}
        />

        <PricingTable
          selectedCycle={selectedCycle}
          productLoader="pricingPage"
        />
        <ContactSection />
      </div>
      <Footer className="container mx-auto flex-shrink-0 px-24" />
    </Fragment>
  );
}

function ContactSection() {
  return (
    <div className="my-20 p-24 text-center md:my-80">
      <ForumIcon size="xl" className="text-muted" />
      <div className="my-8 md:text-lg">
        <Trans message="Do you have any questions about PRO accounts?" />
      </div>
      <div className="mb-24 mt-20 text-sm md:mt-0 md:text-base">
        <Trans message="Our support team will be happy to assist you." />
      </div>
      <Button variant="flat" color="primary" elementType={Link} to="/contact">
        <Trans message="Contact us" />
      </Button>
    </div>
  );
}
